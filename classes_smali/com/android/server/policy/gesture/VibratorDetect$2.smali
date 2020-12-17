.class Lcom/android/server/policy/gesture/VibratorDetect$2;
.super Landroid/database/ContentObserver;
.source "VibratorDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/gesture/VibratorDetect;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/VibratorDetect;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/VibratorDetect;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/VibratorDetect;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/server/policy/gesture/VibratorDetect$2;->this$0:Lcom/android/server/policy/gesture/VibratorDetect;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 63
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect$2;->this$0:Lcom/android/server/policy/gesture/VibratorDetect;

    invoke-static {v0}, Lcom/android/server/policy/gesture/VibratorDetect;->access$100(Lcom/android/server/policy/gesture/VibratorDetect;)V

    .line 64
    return-void
.end method
