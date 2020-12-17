.class public Lcom/android/systemui/fragments/FragmentService;
.super Ljava/lang/Object;
.source "FragmentService.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentService$FragmentHostState;,
        Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mFragmentCreator:Lcom/android/systemui/fragments/FragmentService$FragmentCreator;

.field private final mHandler:Landroid/os/Handler;

.field private final mHosts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/fragments/FragmentService$FragmentHostState;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIRootComponent;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mInjectionMap:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-interface {p1}, Lcom/android/systemui/SystemUIRootComponent;->createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService;->mFragmentCreator:Lcom/android/systemui/fragments/FragmentService$FragmentCreator;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentService;->initInjectionMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initInjectionMap()V
    .registers 7

    .line 69
    const-class v0, Lcom/android/systemui/fragments/FragmentService$FragmentCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 70
    const-class v4, Landroid/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 71
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2d

    .line 72
    iget-object v4, p0, Lcom/android/systemui/fragments/FragmentService;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_30
    return-void
.end method


# virtual methods
.method public destroyAll()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 96
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroy()V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "Dumping fragments:"

    .line 109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 111
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    return-void
.end method

.method getFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mFragmentCreator:Lcom/android/systemui/fragments/FragmentService$FragmentCreator;

    return-object p0
.end method

.method public getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .registers 3

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    if-nez v0, :cond_18

    .line 81
    new-instance v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_18
    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    return-object p0
.end method

.method getInjectionMap()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mInjectionMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 103
    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->sendConfigurationChange(Landroid/content/res/Configuration;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public removeAndDestroy(Landroid/view/View;)V
    .registers 2

    .line 88
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    if-eqz p0, :cond_15

    .line 90
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroy()V

    :cond_15
    return-void
.end method
