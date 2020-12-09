.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$hasNonDefaultColorWindow$7(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
