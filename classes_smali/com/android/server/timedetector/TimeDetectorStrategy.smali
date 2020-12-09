.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;
    }
.end annotation


# direct methods
.method public static getTimeAt(Landroid/util/TimestampedValue;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 91
    invoke-virtual {p0}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 90
    return-wide p1
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract handleAutoTimeDetectionToggle(Z)V
.end method

.method public abstract initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V
.end method

.method public abstract suggestTime(Landroid/app/timedetector/TimeSignal;)V
.end method
