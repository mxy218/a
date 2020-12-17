.class Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;
.super Ljava/lang/Object;
.source "InjectionInflationController.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/InjectionInflationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectionFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/InjectionInflationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/InjectionInflationController;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/util/InjectionInflationController$1;)V
    .registers 3

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;-><init>(Lcom/android/systemui/util/InjectionInflationController;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 240
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9

    const-string v0, "Could not inflate "

    .line 223
    iget-object v1, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController;->access$100(Lcom/android/systemui/util/InjectionInflationController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 225
    new-instance v3, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iget-object v4, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    invoke-direct {v3, v4, p2, p3, v2}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;-><init>(Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController$1;)V

    .line 227
    :try_start_18
    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    .line 228
    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController;->access$300(Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/util/InjectionInflationController$ViewCreator;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/android/systemui/util/InjectionInflationController$ViewCreator;->createInstanceCreator(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_2b} :catch_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    .line 232
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_42
    move-exception p0

    .line 230
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_58
    return-object v2
.end method
