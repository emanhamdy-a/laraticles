<template>
  <div class="container">
    <h2 class="py-4" id="top">Articles</h2>
    <div class="alert alert-success" v-show="showMsg">{{message}}</div>
    <form action="" @submit.prevent="addArticle" class="mb-3">
      <div class="form-group">
        <input
          type="text"
          placeholder="title"
          v-model="article.title"
          class="form-control"
        />
      </div>
      <div class="form-group">
        <input
          type="text"
          placeholder="body"
          v-model="article.body"
          class="form-control"
        />
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-light btn-lock">Save</button>
      </div>
    </form>
    <nav aria-label="Page navigation example">
      <ul class="pagination">
        <li
          v-bind:class="[{ disabled: !pagination.prev_page_url }]"
          class="page-item"
        >
          <a
            @click="fetchArticles(pagination.prev_page_url)"
            class="page-link"
            href="#"
            >Previous</a
          >
        </li>

        <li class="page-item disabled">
          <a class="page-link text-dark">
            Page {{ pagination.current_page }} Of {{ pagination.last_page }}
          </a>
        </li>

        <li
          v-bind:class="[{ disabled: !pagination.next_page_url }]"
          class="page-item"
        >
          <a
            id="next"
            @click="fetchArticles(pagination.next_page_url)"
            class="page-link"
            href="#"
            >Next</a
          >
        </li>
      </ul>
    </nav>
    <div
      class="card card-body mb-2"
      v-bind:id="'article_' + article.id"
      v-for="article in articles"
      v-bind:key="article.id"
    >
      <h4>{{ article.title }}</h4>
      <p>{{ article.body }}</p>
      <hr />
      <div class="row">
        <button
          class="fa fa-trash btn btn-danger mx-3"
          @click="deleteArticle(article.id)"
        >
          Delete
        </button>
        <a href="#top">
        <button
          class="fa fa-trash btn btn-info mx-3"
          @click="editArticle(article)"
        >
          Update
        </button>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      articles: [],
      article: {
        id: "",
        title: "",
        body: "",
        article_id: "",
      },
      showMsg:false,
      message:"",
      pagination: {},
      edit: false
    };
  },

  created() {
    this.fetchArticles();
  },

  methods: {
    fetchArticles(page_url) {
      // let vm=this;
      page_url = page_url || "/articles";
      fetch(page_url) //'/articles'
        .then(res => res.json())
        .then(res => {
          this.articles = res.data;

          let pagination = {
            current_page: res.current_page,
            last_page: res.last_page,
            next_page_url: res.next_page_url,
            prev_page_url: res.prev_page_url
          };
          this.pagination = pagination;
          // vm.makePagination(res);
        })
        .catch(err => console.log(err));
    }, //
    deleteArticle(id) {
      if (confirm("Are you sure you want to delete this article?")) {
        axios
          .delete("/article/" + id)
          .then(response => {
            this.fetchArticles("/articles");
            this.showMsg=true,
            this.message="Article deleted",
            setTimeout(() => {
              this.showMsg=false;
            }, 1500);
            // alert(response.data.body);
            // $("#article_" + id).remove();
          })
          .catch(err => console.log(err));
        // fetch('/article/'+id)
        // .then(res => res.json())
        // .then(data => {
        //   alert('Article removed');
        //   this.fetchArticles('/articles');
        // })
        // .catch(err => console.log(err));
      }
    },
    addArticle() {
      if (this.edit === false) {
        // add
        axios
          .post("/article", this.article, {
            body: JSON.stringify(this.article),
            headers: {
              "content-type": "application/json"
            }
          })
          .then(response => {
            this.article.title = "";
            this.article.body = "";
            this.fetchArticles("/articles");
            this.showMsg=true,
            this.message="Article Added",
            setTimeout(() => {
              this.showMsg=false;
            }, 1500);
            console.log(response);
          })
          .catch(err => console.log(err));
      } else {
        // edit
        axios
          .put("/article", this.article, {
            body: JSON.stringify(this.article),
            headers: {
              "content-type": "application/json"
            }
          })
          .then(response => {
            this.article.title = "";
            this.article.body = "";
            this.fetchArticles("/articles");
            this.showMsg=true,
            this.message="Article updated",
            setTimeout(() => {
              this.showMsg=false;
            }, 1500);
            // alert("Article updated");
            console.log(response);
          })
          .catch(err => console.log(err));
      }
    },
    editArticle(article) {
      this.edit = true;
      this.article.id = article.id;
      this.article.article_id = article.id;
      this.article.title = article.title,
      this.article.body = article.body;
      addArticle();

    }
    // makePagination(res){
    // let pagination={
    //   current_page:res.current_page,
    //   last_page:res.last_page,
    //   next_page_url:res.next_page_url,
    //   prev_page_url:res.prev_page_url,
    // }
    // this.pagination=pagination;
    // },//
  }
};
</script>

<style></style>
