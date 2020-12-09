.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v0}, Lcom/android/server/wm/AppWindowToken;->lambda$removeStartingWindow$4(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    return-void
.end method
