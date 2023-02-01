<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
   
    <div class="sidebar-brand-text mx-3">Chevy App</div>
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">


<?php if(in_groups('user')) : ?>
<!-- Heading -->
<div class="sidebar-heading">
   Pegawai Management
</div>


<!-- Nav Item - Pegawai List -->
<li class="nav-item">
    <a class="nav-link" href="
<?= base_url('user'); ?>">
        <i class="fas fa-users"></i>
        <span>Pegawai List</span></a>
</li>

<?php endif; ?>

<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">
    Profile
</div>


<!-- Nav Item - My Profile -->
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('pegawai'); ?>">
        <i class="fas fa-user"></i>
        <span>My Profile</span></a>
</li>

<!-- Nav Item - Edit Profile -->
<li class="nav-item">
    <a class="nav-link" href="tables.html">
        <i class="fas fa-user-edit"></i>
        <span>Edit Profile</span></a>
</li>

 <!-- Divider -->
 <hr class="sidebar-divider my-0">

<!-- Nav Item - Dashboard -->
<li class="nav-item">
    <a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal">
        <i class="fas fa-sign-out-alt"></i>
        <span>Logout</span></a>
</li>

<!-- Divider -->
<hr class="sidebar-divider">



<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="<?= base_url('logout'); ?>">Logout</a>
                </div>
            </div>
        </div>
    </div>