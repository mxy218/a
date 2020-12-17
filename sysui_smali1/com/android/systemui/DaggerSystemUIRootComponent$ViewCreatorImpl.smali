.class final Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewCreatorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V
    .registers 2

    .line 1944
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 3

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V

    return-void
.end method


# virtual methods
.method public createInstanceCreator(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;
    .registers 4

    .line 1949
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method
