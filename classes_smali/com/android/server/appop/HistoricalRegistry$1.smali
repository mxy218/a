.class Lcom/android/server/appop/HistoricalRegistry$1;
.super Landroid/database/ContentObserver;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/HistoricalRegistry;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 197
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$1;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 200
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$1;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0}, Lcom/android/server/appop/HistoricalRegistry;->access$000(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V

    .line 201
    return-void
.end method
