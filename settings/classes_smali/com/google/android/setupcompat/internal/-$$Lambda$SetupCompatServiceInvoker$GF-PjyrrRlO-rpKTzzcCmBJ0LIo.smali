.class public final synthetic Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;ILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iput p2, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;->f$1:I

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iget v1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;->f$1:I

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$GF-PjyrrRlO-rpKTzzcCmBJ0LIo;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->lambda$logMetricEvent$0$SetupCompatServiceInvoker(ILandroid/os/Bundle;)V

    return-void
.end method
