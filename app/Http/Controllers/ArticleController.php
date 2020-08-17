<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Article;
use App\Http\Resources\Article as ArticleResource;
// use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class ArticleController extends Controller
{

    // self::delete_parent($sub->id);
    public function index()//: AnonymousResourceCollection
    {
        // Get articles
        $articles = Article::orderBy('created_at','desc')->paginate(5);

        return $articles;
        // return ArticleResource::collection($articles);
    }

    public function store(Request $request)
    {
        $article = $request->isMethod('put') ? Article::findOrFail($request->article_id) : new Article;

        $article->id = $request->input('article_id');
        $article->title = $request->input('title');
        $article->body = $request->input('body');

        if ($article->save()) {
            return $article;
            // return new ArticleResource($article);
        }

        return null;
    }

    public function show($id)//: ArticleResource
    {
        // Get article
        $article = Article::findOrFail($id);

        // Return single article as a resource
        return $article;
        // return new ArticleResource($article);
    }

    public function destroy($id)
    {
        // Get article
        // dd($id);
        $article = Article::findOrFail($id);

        if ($article->delete()) {
            return $article;
            // return new ArticleResource($article);
        }

        return null;
    }
}
