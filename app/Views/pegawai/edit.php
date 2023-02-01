<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">
  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800">Form Edit Profile</h1>

  <div class="row">
    <div class="col-lg">
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
            <form action="<?= base_url('update')?>; " method="post">
            <input type="text" name="userid" value="<?= user()->userid; ?>">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Username</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?= user()->username; ?>">
            </div>
             <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?= user()->email; ?>">
             </div>
             <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?= (user()->fullname == '') ? '-' : user()->fullname; ?>">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" value="<?= user()->username; ?>">
              </div>
              </div>
            <div class="d-flex justify-content-end">
              <button type="submit" href="" class="btn btn-primary">Edit</button>
              </form>
              </div>
              <small><a href="<?= base_url('user'); ?>">&laquo; back to user list</a></small>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>

<?= $this->endSection(); ?>
