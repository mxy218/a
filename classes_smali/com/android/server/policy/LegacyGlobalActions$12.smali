.class Lcom/android/server/policy/LegacyGlobalActions$12;
.super Landroid/database/ContentObserver;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V
    .registers 3

    .line 782
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$12;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 785
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$12;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1000(Lcom/android/server/policy/LegacyGlobalActions;)V

    .line 786
    return-void
.end method
