.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;

    invoke-direct {v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;-><init>()V

    sput-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;

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

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
