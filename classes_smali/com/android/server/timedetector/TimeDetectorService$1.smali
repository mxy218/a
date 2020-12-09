.class Lcom/android/server/timedetector/TimeDetectorService$1;
.super Landroid/database/ContentObserver;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/TimeDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$timeDetectorService:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorService;)V
    .registers 3

    .line 81
    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$1;->val$timeDetectorService:Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 83
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$1;->val$timeDetectorService:Lcom/android/server/timedetector/TimeDetectorService;

    invoke-virtual {p1}, Lcom/android/server/timedetector/TimeDetectorService;->handleAutoTimeDetectionToggle()V

    .line 84
    return-void
.end method
