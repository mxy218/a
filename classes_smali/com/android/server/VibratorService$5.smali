.class Lcom/android/server/VibratorService$5;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/VibratorService;

    .line 717
    iput-object p1, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v0}, Lcom/android/server/VibratorService;->onVibrationFinished()V

    .line 721
    return-void
.end method
