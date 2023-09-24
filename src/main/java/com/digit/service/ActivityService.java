package com.digit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digit.entity.Activity;
import com.digit.repository.ActivityRepository;

@Service
public class ActivityService {

	@Autowired
	ActivityRepository repository;

	public List<Activity> getAllActivities() {
		return repository.findAll();

	}

	public Activity updateActivity(Activity activity, int id) {
		Activity act = repository.findById(id).get();
		act.setActivityId(activity.getActivityId());
		act.setCharges(activity.getCharges());
		act.setDescription(activity.getDescription());
		return repository.save(act);
	}

	public void deleteActivity(int id) {
		Activity activity = repository.findById(id).get();
		repository.delete(activity);
	}

	public int countActivityOfCharges(double charges) {
		return repository.countActivitiesOfCharges(charges);
	}

	public Activity getById(Integer id) {

		return repository.findById(id).get();
	}

	public List<Activity> viewAllActivitiesOfCharges(double charges) {
		return repository.viewAllActivitiesOfCharges(charges);
	}

	public void insertActivity(Activity act) {
		repository.save(act);

	}

}
