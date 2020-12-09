.class Lcom/android/server/textservices/TextServicesManagerInternal$1;
.super Lcom/android/server/textservices/TextServicesManagerInternal;
.source "TextServicesManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    .line 50
    const/4 p1, 0x0

    return-object p1
.end method
