from cpython cimport bool

from spine.animation.timeline cimport Timeline
from spine.skeleton.skeleton cimport Skeleton


cdef class Animation(object):

    cdef public basestring name
    cdef public list timelines
    cdef public float duration

    cpdef apply(Animation self, Skeleton skeleton,
                float last_time, float time, bool loop, list events)

    cpdef mix(Animation self, Skeleton skeleton, float last_time, float time,
              bool loop, list events, float alpha)


cdef inline int binary_search(list values, float target, int step)
cdef inline int binary_search1(list values, float target)
cdef inline int linear_search(list values, float target, int step)