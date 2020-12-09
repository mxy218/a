.class interface abstract Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HighRefreshRateBlacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DeviceConfigInterface"
.end annotation


# virtual methods
.method public abstract addOnPropertyChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertyChangedListener;)V
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
