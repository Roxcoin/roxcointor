/* Copyright (c) 2014, Roxcoin Developers */
/* See LICENSE for licensing information */

/**
 * \file roxcoin.h
 * \brief Headers for roxcoin.cpp
 **/

#ifndef TOR_ROXCOIN_H
#define TOR_ROXCOIN_H

#ifdef __cplusplus
extern "C" {
#endif

    char const* roxcoin_tor_data_directory(
    );

    char const* roxcoin_service_directory(
    );

    int check_interrupted(
    );

    void set_initialized(
    );

    void wait_initialized(
    );

#ifdef __cplusplus
}
#endif

#endif

