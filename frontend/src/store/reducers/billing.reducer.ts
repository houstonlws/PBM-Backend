import { PayloadAction } from '@reduxjs/toolkit';
import { BillingState } from '../../types/billing.types';
import { CONSTANTS } from '../constants';

const {
  GET_DEPARTMENT_BILLING_HISTORY_FAILURE,
  GET_DEPARTMENT_BILLING_HISTORY_SUCCESS,
} = CONSTANTS;

const initialState: BillingState = {
  billData: null,
  paymentHistory: [],
};

const billingReducer = (state = initialState, action: PayloadAction) => {
  const { type, payload } = action;

  switch (type) {
    case GET_DEPARTMENT_BILLING_HISTORY_SUCCESS: {
      return {
        ...state,
        billData: payload,
      };
    }
    case GET_DEPARTMENT_BILLING_HISTORY_FAILURE: {
      return {
        ...state,
        billData: null,
      };
    }
    default:
      return state;
  }
};

export default billingReducer;