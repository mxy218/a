.class Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
.super Ljava/lang/Object;
.source "FragmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentHostState"
.end annotation


# instance fields
.field private mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .registers 4

    .line 138
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    .line 140
    new-instance p2, Lcom/android/systemui/fragments/FragmentHostManager;

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object p0
.end method

.method private handleSendConfigurationChange(Landroid/content/res/Configuration;)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object p0
.end method

.method public synthetic lambda$sendConfigurationChange$0$FragmentService$FragmentHostState(Landroid/content/res/Configuration;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->handleSendConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public sendConfigurationChange(Landroid/content/res/Configuration;)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService;->access$100(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fragments/-$$Lambda$FragmentService$FragmentHostState$kEJEvu5Mq9Z5e9srOLcsFn7Glto;-><init>(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
