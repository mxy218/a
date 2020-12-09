.class Lcom/android/server/wm/HighRefreshRateBlacklist$1;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"

# interfaces
.implements Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/HighRefreshRateBlacklist;->create(Landroid/content/res/Resources;)Lcom/android/server/wm/HighRefreshRateBlacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnPropertyChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertyChangedListener;)V
    .registers 4

    .line 53
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->addOnPropertyChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertyChangedListener;)V

    .line 54
    return-void
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 48
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
