.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/RecentsAnimation;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimation;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;->f$0:Lcom/android/server/wm/RecentsAnimation;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;->f$0:Lcom/android/server/wm/RecentsAnimation;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentsAnimation;->lambda$onAnimationFinished$1$RecentsAnimation(IZ)V

    return-void
.end method
