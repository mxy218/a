.class public Lcom/meizu/pps/observer/PPSEventDispatcher$Instance;
.super Ljava/lang/Object;
.source "PPSEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/PPSEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/meizu/pps/observer/PPSEventDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/meizu/pps/observer/PPSEventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/pps/observer/PPSEventDispatcher;-><init>(Lcom/meizu/pps/observer/PPSEventDispatcher$1;)V

    sput-object v0, Lcom/meizu/pps/observer/PPSEventDispatcher$Instance;->INSTANCE:Lcom/meizu/pps/observer/PPSEventDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/meizu/pps/observer/PPSEventDispatcher;
    .registers 1

    .line 42
    sget-object v0, Lcom/meizu/pps/observer/PPSEventDispatcher$Instance;->INSTANCE:Lcom/meizu/pps/observer/PPSEventDispatcher;

    return-object v0
.end method
