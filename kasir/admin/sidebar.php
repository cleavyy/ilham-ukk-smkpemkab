<div class="col-lg-3">
                <nav class="navbar navbar mt-2 mb-1">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="offcanvas offcanvas-start text-bg-secondary" tabindex="-1" id="offcanvasDarkNavbar"
                            aria-labelledby="offcanvasDarkNavbarLabel">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">RusdiMart</h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                                    aria-label="Close"></button>
                            </div>
                            <div class="offcanvas-body">
                                <ul class="navbar-nav nav-pills flex-column justify-content-end flex-grow-1">
                                    <li class="nav-item">
                                        <a class="nav-link <?php echo (isset($_GET['x']) && $_GET['x']=='home' || !isset($_GET['x'])) ? "active link-dark bg-light" : "" ; ?> ps-2" aria-current="page" href="home"><i class="bi bi-house"></i> Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link <?php echo (isset($_GET['x']) && $_GET['x']=='produk') ? "active link-dark bg-light" : "" ; ?> ps-2" href="produk"><i class="bi bi-card-list"></i> Produk</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link <?php echo (isset($_GET['x']) && $_GET['x']=='user') ? "active link-dark bg-light" : "" ; ?> ps-2" href="user"><i class="bi bi-person-vcard"></i> User</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link <?php echo (isset($_GET['x']) && $_GET['x']=='penjualan') ? "active link-dark bg-light" : "" ; ?> ps-2" href="penjualan"><i class="bi bi-cart2"></i> Penjualan</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>