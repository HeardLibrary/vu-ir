
import { AppConfig } from '../config/app-config.interface';

export const environment: Partial<AppConfig> = {
  production: true,

themes: [
	{
	name: 'dspace'
	},
	]

  // Angular Universal settings
  universal: {
    preboot: true,
    async: true,
    time: false
  }
};
