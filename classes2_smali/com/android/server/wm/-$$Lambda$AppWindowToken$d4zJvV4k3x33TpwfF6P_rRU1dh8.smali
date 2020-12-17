.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$d4zJvV4k3x33TpwfF6P_rRU1dh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$d4zJvV4k3x33TpwfF6P_rRU1dh8;->f$0:Lcom/android/server/wm/AppWindowToken;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$d4zJvV4k3x33TpwfF6P_rRU1dh8;->f$0:Lcom/android/server/wm/AppWindowToken;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->lambda$shouldUseAppThemeSnapshot$5$AppWindowToken(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
