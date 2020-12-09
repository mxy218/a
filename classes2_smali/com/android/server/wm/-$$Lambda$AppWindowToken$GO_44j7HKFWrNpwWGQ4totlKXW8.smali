.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$showAllWindowsLocked$6(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
