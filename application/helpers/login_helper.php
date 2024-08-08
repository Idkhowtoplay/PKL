<?php
function is_logged_in()
{
    $ci = get_instance();
    // if ($ci->session->userdata('id_level') !== '1') {
    //     redirect('auth/logout');
    // }
    if (!$ci->session->userdata('username')) {
        redirect('auth');
    } else {
        $role_id = $ci->session->userdata('id_type');

        $userAccess = $ci->db->get_where('user_access_menu', [
            'id_type' => $role_id
        ]);
        if ($userAccess->num_rows() < 1) {
            redirect('auth/blocked');
        }
    }
}
