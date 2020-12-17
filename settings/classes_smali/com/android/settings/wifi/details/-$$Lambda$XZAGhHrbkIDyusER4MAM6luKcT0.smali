.class public final synthetic Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

    invoke-direct {v0}, Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

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

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
