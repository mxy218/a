.class final Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateConfigurationResult"
.end annotation


# instance fields
.field activityRelaunched:Z

.field changes:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 496
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 497
    return-void
.end method
