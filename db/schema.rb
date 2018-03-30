# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180220090008) do

  create_table "aas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "acms", force: :cascade do |t|
    t.text "content"
    t.integer "aa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aa_id"], name: "index_acms_on_aa_id"
    t.index ["user_id"], name: "index_acms_on_user_id"
  end

  create_table "bas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "bcms", force: :cascade do |t|
    t.text "content"
    t.integer "ba_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ba_id"], name: "index_bcms_on_ba_id"
    t.index ["user_id"], name: "index_bcms_on_user_id"
  end

  create_table "buyselcms", force: :cascade do |t|
    t.text "content"
    t.integer "buysel_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buysel_id"], name: "index_buyselcms_on_buysel_id"
    t.index ["user_id"], name: "index_buyselcms_on_user_id"
  end

  create_table "buysels", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hphoto_file_name"
    t.string "hphoto_content_type"
    t.integer "hphoto_file_size"
    t.datetime "hphoto_updated_at"
    t.integer "user_id"
  end

  create_table "cas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "ccms", force: :cascade do |t|
    t.text "content"
    t.integer "ca_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ca_id"], name: "index_ccms_on_ca_id"
    t.index ["user_id"], name: "index_ccms_on_user_id"
  end

  create_table "compcms", force: :cascade do |t|
    t.text "content"
    t.integer "comp_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comp_id"], name: "index_compcms_on_comp_id"
    t.index ["user_id"], name: "index_compcms_on_user_id"
  end

  create_table "comps", force: :cascade do |t|
    t.string "company_name"
    t.string "company_phone"
    t.string "company_address"
    t.integer "year_establishment"
    t.integer "total_employees"
    t.string "total_company_revenue"
    t.string "total_annual_revenue"
    t.string "target_contry"
    t.string "oem_odm"
    t.string "standard_certification"
    t.string "success_failure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "contants", force: :cascade do |t|
    t.string "phone_email_number"
    t.string "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "das", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "dcms", force: :cascade do |t|
    t.text "content"
    t.integer "da_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["da_id"], name: "index_dcms_on_da_id"
    t.index ["user_id"], name: "index_dcms_on_user_id"
  end

  create_table "eas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "ecms", force: :cascade do |t|
    t.text "content"
    t.integer "ea_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ea_id"], name: "index_ecms_on_ea_id"
    t.index ["user_id"], name: "index_ecms_on_user_id"
  end

  create_table "fas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "fcms", force: :cascade do |t|
    t.text "content"
    t.integer "fa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fa_id"], name: "index_fcms_on_fa_id"
    t.index ["user_id"], name: "index_fcms_on_user_id"
  end

  create_table "gas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "gcms", force: :cascade do |t|
    t.text "content"
    t.integer "ga_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ga_id"], name: "index_gcms_on_ga_id"
    t.index ["user_id"], name: "index_gcms_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "has", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "hcms", force: :cascade do |t|
    t.text "content"
    t.integer "ha_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ha_id"], name: "index_hcms_on_ha_id"
    t.index ["user_id"], name: "index_hcms_on_user_id"
  end

  create_table "icms", force: :cascade do |t|
    t.text "content"
    t.integer "ii_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ii_id"], name: "index_icms_on_ii_id"
    t.index ["user_id"], name: "index_icms_on_user_id"
  end

  create_table "iis", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "jas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "jcms", force: :cascade do |t|
    t.text "content"
    t.integer "ja_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ja_id"], name: "index_jcms_on_ja_id"
    t.index ["user_id"], name: "index_jcms_on_user_id"
  end

  create_table "kas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "kcms", force: :cascade do |t|
    t.text "content"
    t.integer "ka_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ka_id"], name: "index_kcms_on_ka_id"
    t.index ["user_id"], name: "index_kcms_on_user_id"
  end

  create_table "las", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "lcms", force: :cascade do |t|
    t.text "content"
    t.integer "la_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["la_id"], name: "index_lcms_on_la_id"
    t.index ["user_id"], name: "index_lcms_on_user_id"
  end

  create_table "mas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "mcms", force: :cascade do |t|
    t.text "content"
    t.integer "ma_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ma_id"], name: "index_mcms_on_ma_id"
    t.index ["user_id"], name: "index_mcms_on_user_id"
  end

  create_table "nas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "ncms", force: :cascade do |t|
    t.text "content"
    t.integer "na_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["na_id"], name: "index_ncms_on_na_id"
    t.index ["user_id"], name: "index_ncms_on_user_id"
  end

  create_table "oas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "ocms", force: :cascade do |t|
    t.text "content"
    t.integer "oa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oa_id"], name: "index_ocms_on_oa_id"
    t.index ["user_id"], name: "index_ocms_on_user_id"
  end

  create_table "pas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "pcms", force: :cascade do |t|
    t.text "content"
    t.integer "pa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pa_id"], name: "index_pcms_on_pa_id"
    t.index ["user_id"], name: "index_pcms_on_user_id"
  end

  create_table "prods", force: :cascade do |t|
    t.string "product_name"
    t.string "product_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pphoto_file_name"
    t.string "pphoto_content_type"
    t.integer "pphoto_file_size"
    t.datetime "pphoto_updated_at"
    t.integer "user_id"
  end

  create_table "profils", force: :cascade do |t|
    t.integer "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uphoto_file_name"
    t.string "uphoto_content_type"
    t.integer "uphoto_file_size"
    t.datetime "uphoto_updated_at"
    t.integer "user_id"
  end

  create_table "qas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "qcms", force: :cascade do |t|
    t.text "content"
    t.integer "qa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qa_id"], name: "index_qcms_on_qa_id"
    t.index ["user_id"], name: "index_qcms_on_user_id"
  end

  create_table "ras", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "rcms", force: :cascade do |t|
    t.text "content"
    t.integer "ra_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ra_id"], name: "index_rcms_on_ra_id"
    t.index ["user_id"], name: "index_rcms_on_user_id"
  end

  create_table "sas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "scms", force: :cascade do |t|
    t.text "content"
    t.integer "sa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sa_id"], name: "index_scms_on_sa_id"
    t.index ["user_id"], name: "index_scms_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.string "keywords2"
    t.string "keywords3"
    t.string "keywords4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopcms", force: :cascade do |t|
    t.text "content"
    t.integer "shop_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shopcms_on_shop_id"
    t.index ["user_id"], name: "index_shopcms_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "shop_name"
    t.string "market_type"
    t.string "description"
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.string "saturday"
    t.string "sunday"
    t.string "timeing"
    t.string "shop_city"
    t.string "shop_country"
    t.string "website_link"
    t.string "min_order"
    t.string "supply_ability"
    t.string "delivery_time"
    t.string "transportation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "sphoto_file_name"
    t.string "sphoto_content_type"
    t.integer "sphoto_file_size"
    t.datetime "sphoto_updated_at"
  end

  create_table "tcms", force: :cascade do |t|
    t.text "content"
    t.integer "tt_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tt_id"], name: "index_tcms_on_tt_id"
    t.index ["user_id"], name: "index_tcms_on_user_id"
  end

  create_table "tts", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "uas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "ucms", force: :cascade do |t|
    t.text "content"
    t.integer "ua_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ua_id"], name: "index_ucms_on_ua_id"
    t.index ["user_id"], name: "index_ucms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "contry"
    t.string "business_type"
    t.string "mobile_number"
    t.string "city"
    t.string "industry"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "vcms", force: :cascade do |t|
    t.text "content"
    t.integer "va_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vcms_on_user_id"
    t.index ["va_id"], name: "index_vcms_on_va_id"
  end

  create_table "was", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "wcms", force: :cascade do |t|
    t.text "content"
    t.integer "wa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wcms_on_user_id"
    t.index ["wa_id"], name: "index_wcms_on_wa_id"
  end

  create_table "xas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "xcms", force: :cascade do |t|
    t.text "content"
    t.integer "xa_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_xcms_on_user_id"
    t.index ["xa_id"], name: "index_xcms_on_xa_id"
  end

  create_table "yas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "ycms", force: :cascade do |t|
    t.text "content"
    t.integer "ya_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ycms_on_user_id"
    t.index ["ya_id"], name: "index_ycms_on_ya_id"
  end

  create_table "zas", force: :cascade do |t|
    t.string "product_name"
    t.string "post_type"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "zcms", force: :cascade do |t|
    t.text "content"
    t.integer "za_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_zcms_on_user_id"
    t.index ["za_id"], name: "index_zcms_on_za_id"
  end

  create_table "zzas", force: :cascade do |t|
    t.string "shop_name"
    t.string "offer"
    t.string "offerdaystart"
    t.string "offerdayend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "zzcms", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_zzcms_on_user_id"
  end

end
