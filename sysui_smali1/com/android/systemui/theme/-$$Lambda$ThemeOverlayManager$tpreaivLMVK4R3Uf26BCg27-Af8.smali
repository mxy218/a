.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;

    invoke-direct {v0}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;-><init>()V

    sput-object v0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;->INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$tpreaivLMVK4R3Uf26BCg27-Af8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$applyCurrentUserOverlays$5(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method