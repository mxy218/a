.class public final synthetic Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$TsHHZCuIB3sKEZ8IZ0oPokZZO6g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    check-cast p2, Landroid/print/PrinterId;

    invoke-static {p1, p2}, Lcom/android/server/print/RemotePrintService;->lambda$TsHHZCuIB3sKEZ8IZ0oPokZZO6g(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method
