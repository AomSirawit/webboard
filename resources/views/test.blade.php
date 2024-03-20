<h1>{{ $post->title }}</h1>
<p>{{ $post->content }}</p>

<h2>Comments</h2>

@forelse ($comments as $comment)
    <div>
        {{ $comment->content }} - {{ $comment->user->name ?? 'Anonymous' }}  {{-- Display user name if available --}}
    </div>
@empty
    <p>No comments yet.</p>
@endforelse

{{ $comments->links() }}  {{-- Pagination links --}}

<form action="{{ route('comments.store', $post) }}" method="POST">
    @csrf
    <textarea name="content" placeholder="Add a comment"></textarea>
    <button type="submit">Submit Comment</button>
</form>
