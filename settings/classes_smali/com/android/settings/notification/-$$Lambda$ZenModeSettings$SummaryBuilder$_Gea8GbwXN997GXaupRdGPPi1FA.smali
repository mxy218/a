.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;

    invoke-direct {v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;-><init>()V

    sput-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
