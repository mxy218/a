.class public final synthetic Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;->INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->lambda$notifyCarrierNetworkChange$0(I)Z

    move-result p1

    return p1
.end method
