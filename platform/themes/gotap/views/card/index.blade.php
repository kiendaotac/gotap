<div class="container">
    <div class="row gx-md-11 gx-lg-0">
    <!-- /section -->
    <section id="icon-box" class="wrapper pb-2" style="padding-bottom: 6rem !important;">
            @foreach($card->accounts as $account)
                <a href="{{ $account->url }}">
                    <div class="row text-center gy-6 mt-6">
                        <div class="col-md-6 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <img src="{{ RvMedia::getImageUrl($account->social->icon) }}" class="svg-inject icon-svg icon-svg-md text-violet mb-4" alt="" />
                                    <h4>{{ $account->name }}</h4>
{{--                                    <a href="{{ $account->url }}" class="more hover link-violet">Đi đến</a>--}}
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            @endforeach
        <!--/.row -->
    </section>
    <!-- /section -->
    </div>
</div>