.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;ZZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$0:Lcom/android/server/policy/WindowManagerPolicy;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$0:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$6eK8yH4GLimaHyBccN7V6eRKIHQ;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/DisplayContent;->lambda$startKeyguardExitOnNonAppWindows$19(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V

    return-void
.end method
