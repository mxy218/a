.class Lcom/android/server/NetworkManagementService$RestrictIf;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestrictIf"
.end annotation


# instance fields
.field public active:Landroid/util/SparseBooleanArray;

.field public ifName:Ljava/lang/String;

.field public pending:Landroid/util/SparseBooleanArray;

.field public transport:I

.field public useCase:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$RestrictIf;->useCase:Ljava/lang/String;

    .line 285
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$RestrictIf;->ifName:Ljava/lang/String;

    .line 286
    iput p2, p0, Lcom/android/server/NetworkManagementService$RestrictIf;->transport:I

    .line 287
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$RestrictIf;->active:Landroid/util/SparseBooleanArray;

    .line 288
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$RestrictIf;->pending:Landroid/util/SparseBooleanArray;

    .line 289
    return-void
.end method
