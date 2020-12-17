.class public final Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private dependencyProvider:Lcom/android/systemui/DependencyProvider;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 2

    .line 1466
    invoke-direct {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .registers 1

    .line 1466
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;
    .registers 1

    .line 1466
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/SystemUIRootComponent;
    .registers 3

    .line 1474
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    if-eqz v0, :cond_16

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    if-nez v0, :cond_f

    .line 1479
    new-instance v0, Lcom/android/systemui/DependencyProvider;

    invoke-direct {v0}, Lcom/android/systemui/DependencyProvider;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    .line 1481
    :cond_f
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0

    .line 1475
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1476
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contextHolder(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
    .registers 2

    .line 1490
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method public dependencyProvider(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
    .registers 2

    .line 1485
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/DependencyProvider;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    return-object p0
.end method
