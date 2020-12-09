.class Lcom/android/server/am/ActivityManagerShellCommand$3;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;

.field final synthetic val$recentConfigs:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V
    .registers 3

    .line 1925
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .registers 4

    .line 1928
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1925
    check-cast p1, Landroid/content/res/Configuration;

    check-cast p2, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand$3;->compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method
