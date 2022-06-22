<div class="gallery grid">
    @if(!empty($images))
    @foreach($images as $image)
            <img src="{{ $image->external }}/500" title="{{ empty($image->title) ? $image->filename : $image->title }}"/>
    @endforeach
        @endif
</div>