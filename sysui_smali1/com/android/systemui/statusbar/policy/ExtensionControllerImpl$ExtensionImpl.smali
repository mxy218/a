.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mPluginContext:Landroid/content/Context;

.field private final mProducers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$1;)V
    .registers 3

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V
    .registers 1

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mPluginContext:Landroid/content/Context;

    return-object p1
.end method

.method private notifyChanged()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    :cond_f
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 195
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    goto :goto_30

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 199
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_48
    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDefault(Ljava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/util/function/Supplier;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPlugin(Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter<",
            "TT;TP;>;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearItem(Z)V
    .registers 3

    if-eqz p1, :cond_11

    .line 181
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    if-eqz p1, :cond_11

    .line 182
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    :cond_11
    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v0, 0x0

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Landroid/content/Context;

    move-result-object v0

    :goto_b
    return-object v0
.end method
