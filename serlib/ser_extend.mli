(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(************************************************************************)
(* SerAPI: Coq interaction protocol with bidirectional serialization    *)
(************************************************************************)
(* Copyright 2016-2019 MINES ParisTech -- License LGPL 2.1+             *)
(* Copyright 2019-2023 Inria           -- License LGPL 2.1+             *)
(* Written by: Emilio J. Gallego Arias and others                       *)
(************************************************************************)

open Sexplib

type production_position = Extend.production_position
val production_position_of_sexp : Sexp.t -> production_position
val sexp_of_production_position : production_position -> Sexp.t

type production_level = Extend.production_level [@@deriving sexp,yojson,hash,compare]

type binder_entry_kind = Extend.binder_entry_kind
val binder_entry_kind_of_sexp : Sexp.t -> binder_entry_kind
val sexp_of_binder_entry_kind : binder_entry_kind -> Sexp.t

type ('custom,'lev) constr_entry_key_gen = ('custom,'lev) Extend.constr_entry_key_gen
[@@deriving sexp,yojson,hash,compare]

type constr_entry_key = Extend.constr_entry_key
val constr_entry_key_of_sexp : Sexp.t -> constr_entry_key
val sexp_of_constr_entry_key : constr_entry_key -> Sexp.t

type constr_prod_entry_key = Extend.constr_prod_entry_key
val constr_prod_entry_key_of_sexp : Sexp.t -> constr_prod_entry_key
val sexp_of_constr_prod_entry_key : constr_prod_entry_key -> Sexp.t

type 'custom simple_constr_prod_entry_key = 'custom Extend.simple_constr_prod_entry_key [@@deriving sexp,yojson,hash,compare]
