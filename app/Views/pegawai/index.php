<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">
  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800">My Profile</h1>

  <div class="row">
    <div class="col-lg-8">
      <div class="card mb-3" style="max-width: 540px">
        <div class="row g-0">
          <div class="col-md-4">
            <img
              src="<?= base_url('/img/'.user()->user_image); ?>"
              class="img-fluid rounded-start"
              alt="<?= user()->fullname; ?>"
            />
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title"><?= user()->username; ?></h5>
              <?php if (user()->fullname) : ?>
              <p class="card-text"><?= user()->fullname; ?></p>
              <?php endif; ?>
              
              <p class="card-text"><?= user()->email; ?></p>
              <div class="d-flex justify-content-end">
              <a href="<?= base_url('pegawai/edit/'); ?>" class="btn btn-primary">Edit</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<?= $this->endSection(); ?>
