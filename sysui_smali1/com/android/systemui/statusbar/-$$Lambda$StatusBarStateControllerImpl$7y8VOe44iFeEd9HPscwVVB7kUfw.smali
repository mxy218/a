.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$StatusBarStateControllerImpl$7y8VOe44iFeEd9HPscwVVB7kUfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$StatusBarStateControllerImpl$7y8VOe44iFeEd9HPscwVVB7kUfw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarStateControllerImpl$7y8VOe44iFeEd9HPscwVVB7kUfw;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarStateControllerImpl$7y8VOe44iFeEd9HPscwVVB7kUfw;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarStateControllerImpl$7y8VOe44iFeEd9HPscwVVB7kUfw;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$StatusBarStateControllerImpl$7y8VOe44iFeEd9HPscwVVB7kUfw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->lambda$static$0(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)I

    move-result p0

    return p0
.end method
