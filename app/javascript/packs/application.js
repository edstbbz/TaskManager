import WebpackerReact from 'webpacker-react';
import TaskBoard from '../components/TaskBoard';
import Rails from '@rails/ujs';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';
import 'material-design-lite/material.js';

Rails.start();
ActiveStorage.start();
WebpackerReact.setup({ TaskBoard });
