.class public final synthetic Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$Xhv6ez4NTBFUn6cNE_oxYP2IXvc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/setupcompat/internal/Ticker;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$Xhv6ez4NTBFUn6cNE_oxYP2IXvc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$Xhv6ez4NTBFUn6cNE_oxYP2IXvc;

    invoke-direct {v0}, Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$Xhv6ez4NTBFUn6cNE_oxYP2IXvc;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$Xhv6ez4NTBFUn6cNE_oxYP2IXvc;->INSTANCE:Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$Xhv6ez4NTBFUn6cNE_oxYP2IXvc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read()J
    .registers 3

    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->lambda$static$1()J

    move-result-wide v0

    return-wide v0
.end method
