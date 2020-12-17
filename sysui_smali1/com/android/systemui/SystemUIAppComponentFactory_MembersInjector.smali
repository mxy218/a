.class public final Lcom/android/systemui/SystemUIAppComponentFactory_MembersInjector;
.super Ljava/lang/Object;
.source "SystemUIAppComponentFactory_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/android/systemui/SystemUIAppComponentFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMComponentHelper(Lcom/android/systemui/SystemUIAppComponentFactory;Lcom/android/systemui/ContextComponentHelper;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/android/systemui/SystemUIAppComponentFactory;->mComponentHelper:Lcom/android/systemui/ContextComponentHelper;

    return-void
.end method
