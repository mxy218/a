.class public interface abstract annotation Lcom/google/android/setupcompat/logging/internal/SetupMetricsLoggingConstants$MetricBundleKeys;
.super Ljava/lang/Object;
.source "SetupMetricsLoggingConstants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COUNTER_INT:Ljava/lang/String; = "counter"

.field public static final CUSTOM_EVENT:Ljava/lang/String; = "CustomEvent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_EVENT_BUNDLE:Ljava/lang/String; = "CustomEvent_bundle"

.field public static final METRIC_KEY:Ljava/lang/String; = "MetricKey"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final METRIC_KEY_BUNDLE:Ljava/lang/String; = "MetricKey_bundle"

.field public static final TIME_MILLIS_LONG:Ljava/lang/String; = "timeMillis"
