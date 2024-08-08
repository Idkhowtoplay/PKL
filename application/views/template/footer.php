            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; SMKN 1 GARUT, All Right Reserved.</p></span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-primary" href="<?= base_url('auth/logout'); ?>">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="<?= base_url('assets/'); ?>vendor/jquery/jquery.min.js"></script>
            <script src="<?= base_url('assets/'); ?>vendor/bootstrap/js/bootstrap.min.js"></script>
            <script src="<?= base_url('assets/'); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>
            <script src="<?= base_url('assets/'); ?>js/my.js"></script>

            <!-- Page level plugins -->
            <script src="<?= base_url('assets/'); ?>vendor/datatables/jquery.dataTables.min.js"></script>
            <script src="<?= base_url('assets/'); ?>vendor/datatables/dataTables.bootstrap4.min.js"></script>

            <!-- Summernote -->
            <script src="<?= base_url('assets/') ?>vendor/summernote/summernote-bs4.min.js"></script>
            <script src="<?= base_url('assets/') ?>plugins/popper/popper.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="<?= base_url('assets/'); ?>js/demo/datatables-demo.js"></script>
            <script src="<?= base_url('assets/'); ?>js/summernote.js"></script>

            <!-- Latest compiled and minified JavaScript -->
            <script src="<?= base_url('assets/') ?>bootstrap-select-1.13.14/dist/js/bootstrap-select.min.js"></script>

            <script type="text/javascript">
                function gambar(a) {
                    if (a.files && a.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function(e) {
                            document.getElementById('foto').src = e.target.result;
                        }
                        reader.readAsDataURL(a.files[0]);
                    }
                }
                $('.custom-file-input').on('change', function() {
                    let fileName = $(this).val().split('\\').pop();
                    $(this).next('.custom-file-label').addClass("selected").html(fileName);
                });

                var tm_pilih = document.getElementById('pilih');
                var file = document.getElementById('file');
                tm_pilih.addEventListener('click', function() {
                    file.click();
                })
                file.addEventListener('change', function() {
                    gambar(this);
                });

                $(document).ready(function() {
                    if ($("input[name='jabatan_cek']:checked").val() == "Perangkat Desa") {
                        $("#form-input").slideDown("fast");
                    } else {
                        $("#form-input").css("display", "none");
                        $(".detail").click(function() {
                            if ($("input[name='jabatan_cek']:checked").val() == "Perangkat Desa") {
                                $("#form-input").slideDown("fast");
                            } else {
                                $("#form-input").slideUp("fast");
                                0
                            }
                        });
                    }
                });
                $(document).ready(function() {
                    if ($("input[name='jabatan_cek']:checked").val() == "Lembaga Desa") {
                        $("#form-input1").slideDown("fast");
                    } else {
                        $("#form-input1").css("display", "none");
                        $(".detail").click(function() {
                            if ($("input[name='jabatan_cek']:checked").val() == "Lembaga Desa") {
                                $("#form-input1").slideDown("fast");
                            } else {
                                $("#form-input1").slideUp("fast");
                            }
                        });
                    }
                });
            </script>
            </body>

            </html>