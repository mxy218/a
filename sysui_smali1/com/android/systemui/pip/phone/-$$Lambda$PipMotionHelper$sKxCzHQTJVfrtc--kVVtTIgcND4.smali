.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$expandPip$0$PipMotionHelper(Z)V

    return-void
.end method
