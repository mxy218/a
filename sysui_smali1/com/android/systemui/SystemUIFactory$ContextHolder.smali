.class public Lcom/android/systemui/SystemUIFactory$ContextHolder;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory$ContextHolder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public provideContext()Landroid/content/Context;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory$ContextHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method
