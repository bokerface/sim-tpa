<x-user.layout>
    <!-- Header-->
    {{-- <header class="bg-dark py-5">
        <div class="container px-5">
            <div class="row gx-5 align-items-center justify-content-center">
                <div class="col-lg-8 col-xl-7 col-xxl-6">
                    <div class="my-5 text-center text-xl-start">
                        <h1 class="display-5 fw-bolder text-white mb-2">A Bootstrap 5 template for modern businesses
                        </h1>
                        <p class="lead fw-normal text-white-50 mb-4">Quickly design and customize responsive
                            mobile-first sites with Bootstrap, the world’s most popular front-end open source
                            toolkit!</p>
                        <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                            <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Get Started</a>
                            <a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                    <img class="img-fluid rounded-3 my-5" src="https://dummyimage.com/600x400/343a40/6c757d"
                        alt="..." />
                </div>
            </div>
        </div>
    </header> --}}
    <!-- Features section-->
    @foreach($numberOfUsersPerVillages as $numberOfUsersPerVillage)
        <div class="card my-1">
            <div class="card-body">
                <span>{{ $numberOfUsersPerVillage['village'] }}</span><br>
                <span>{{ $numberOfUsersPerVillage['users'] }}</span>
            </div>
        </div>
    @endforeach
    event lunas
    <br>
    {{ $event_paid }}
    <br>
    belum lunas
    <br>
    {{ $event_with_pending_payment }}
    <br>
    keranjang user
    <br>
    {{ $users_cart }}
    <br>

    <div class="card">
        <div class="card-body">
            <div>
                user dengan keranjang
                <br>
                @foreach($user_with_cart as $user)
                    {{ $user->userProfile->institution_name }}
                @endforeach
            </div>
            <div>
                user dengan pembayaran lunas
                <br>
                @foreach($user_with_paid_event as $user)
                    {{ $user->user->userProfile->institution_name }}
                @endforeach
            </div>
            <div>
                user dengan pembayaran belum lunas
                <br>
                @foreach($user_with_pending_payment as $user)
                    {{ $user->user->userProfile->institution_name }}
                @endforeach
            </div>
        </div>
    </div>
    <section class="py-5" id="features">
        <div class="container px-5 my-5">
            @if(auth()->check())
                @if($completeProfileNotification == true)
                    <div class="alert alert-warning" role="alert">
                        Mohon lengkapi data profil anda.
                    </div>
                @endif
            @endif

            <div class="row gx-5">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h2 class="fw-bolder mb-0">Daftar Event</h2>
                    <a href="{{ route('user.homepage') }}"
                        class="badge rounded-pill text-bg-secondary" style="text-decoration: none">
                        semua kategori
                    </a>
                    @foreach($categories as $category)
                        <a href="{{ route('user.homepage').'?category='.$category->id }}"
                            class="badge rounded-pill text-bg-secondary"
                            style="text-decoration: none">{{ $category->name }}</a>
                    @endforeach
                </div>
                <div class="col-lg-8">
                    @foreach($trainings as $training)
                        <div class="card mb-3">
                            <div class="row g-0">
                                <div class="col-md-12">
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <a href="{{ route('user.training_detail',$training->id) }}"
                                                class="stretched-link">
                                                {{ $training->name }}
                                            </a>
                                        </h5>
                                        {{-- <p class="card-text">
                                            {{ str()->limit($training->description,300) }}
                                        </p> --}}
                                        {{-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small> --}}
                                        {{-- </p> --}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            {{-- <div class="row gx-5"> --}}
            {{-- <div class="col-lg-12 mb-5 mb-lg-0 d-flex"> --}}
            {{-- @foreach($news as $info) --}}
            {{-- <div class="card"> --}}
            {{-- <div class="card-body"> --}}
            {{-- <a class="card-text"
                                    href="{{ route('user.news_detail', $info['id']) }}">
            {{ $info['title']['rendered'] }}
            </a> --}}
            {{-- </div> --}}
            {{-- </div> --}}
            {{-- @endforeach --}}
            {{-- </div> --}}
            {{-- {{ $news->links() }} --}}
            {{-- </div> --}}
        </div>

    </section>
</x-user.layout>
