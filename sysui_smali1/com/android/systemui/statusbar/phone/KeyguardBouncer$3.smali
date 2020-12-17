.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;
.super Ljava/lang/Thread;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showSaveViewOrNot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 680
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 681
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
