<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMasterDatasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('master_datas', function(Blueprint $table) {
            $table->increments('id');
            $table->int('id');
            $table->string('imei');
            $table->date('created_at');
            $table->date('updated_at');
            $table->string('click');
            $table->string('view');
            $table->string('type_device');
            $table->string('language');
            $table->string('state');
            $table->string('regional');
            $table->timestamps();
        });
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('master_datas');
	}

}
