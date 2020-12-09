.class public Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSettings"
.end annotation


# static fields
.field private static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUserManagerInternal:Landroid/os/UserManagerInternal;


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private mEnabledInputMethodsStrCache:Ljava/lang/String;

.field private final mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRes:Landroid/content/res/Resources;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 760
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 762
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 765
    const-class v0, Landroid/os/UserManagerInternal;

    .line 766
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 765
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;IZ)V"
        }
    .end annotation

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 748
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 758
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    .line 769
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 773
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    .line 813
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 814
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    .line 815
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    .line 816
    invoke-virtual {p0, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 817
    return-void
.end method

.method private addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1059
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v0

    .line 1060
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1061
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1067
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1068
    goto :goto_23

    .line 1070
    :cond_22
    goto :goto_8

    .line 1074
    :cond_23
    :goto_23
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 777
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 781
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    goto :goto_f

    .line 783
    :cond_24
    return-void
.end method

.method private static buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 791
    return-object v0

    .line 793
    :cond_c
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 794
    :goto_f
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_42

    .line 795
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 796
    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_41

    .line 798
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 801
    :goto_2b
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 802
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 804
    :cond_39
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_41
    goto :goto_f

    .line 807
    :cond_42
    return-object v0
.end method

.method private createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 997
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 998
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 999
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1000
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_2a
    goto :goto_9

    .line 1003
    :cond_2b
    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 885
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    return p2
.end method

.method private getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1133
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1134
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 1135
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5c

    .line 1141
    if-eqz p2, :cond_89

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-lez p1, :cond_89

    .line 1142
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 1143
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1144
    if-eqz p1, :cond_5b

    .line 1145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 1146
    const/4 v0, 0x0

    :goto_41
    if-ge v0, p2, :cond_5b

    .line 1147
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1148
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1149
    return-object p3

    .line 1146
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1153
    :cond_5b
    goto :goto_89

    .line 1155
    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1156
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1159
    :try_start_72
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1161
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1162
    return-object v0

    .line 1164
    :cond_7d
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object p1
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_81} :catch_82

    return-object p1

    .line 1166
    :catch_82
    move-exception p1

    .line 1167
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1170
    :cond_88
    goto :goto_60

    .line 1173
    :cond_89
    :goto_89
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1175
    :cond_8e
    goto/16 :goto_4

    .line 1177
    :cond_90
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 5

    .line 873
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 874
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 875
    if-eqz p1, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_1a
    return p2

    .line 877
    :cond_1b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method private getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1105
    nop

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 1107
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v1

    .line 1108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1109
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1112
    :cond_29
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1113
    nop

    .line 1114
    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1120
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1123
    :cond_3e
    goto :goto_d

    .line 1127
    :cond_3f
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelectedInputMethodSubtypeHashCode()I
    .registers 3

    .line 1243
    const-string/jumbo v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 854
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 855
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1d

    .line 857
    :cond_15
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 859
    :goto_1d
    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    move-object p1, p2

    :goto_21
    return-object p1
.end method

.method private getSubtypeHistoryStr()Ljava/lang/String;
    .registers 3

    .line 1206
    const-string v0, "input_methods_subtype_history"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    return-object v0
.end method

.method private loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1184
    return-object v0

    .line 1186
    :cond_10
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1187
    :goto_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1188
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1189
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1191
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v1

    .line 1193
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1194
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1195
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1198
    :cond_48
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_50
    goto :goto_15

    .line 1201
    :cond_51
    return-object v0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .registers 3

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    .line 882
    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .registers 5

    .line 863
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_e

    .line 864
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 866
    :cond_e
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 867
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_21

    :cond_1f
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 868
    :goto_21
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 870
    :goto_26
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 842
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_a

    .line 843
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 845
    :cond_a
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 846
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 847
    :goto_1d
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 849
    :goto_22
    return-void
.end method

.method private putSubtypeHistoryStr(Ljava/lang/String;)V
    .registers 4

    .line 1081
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "input_methods_subtype_history"

    if-eqz v0, :cond_d

    .line 1084
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1086
    :cond_d
    invoke-direct {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :goto_10
    return-void
.end method

.method private saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    nop

    .line 1035
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3b

    if-nez v1, :cond_20

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1036
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    move p2, v2

    goto :goto_21

    .line 1040
    :cond_20
    const/4 p2, 0x0

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 1041
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1042
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    .line 1043
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1044
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object p3

    .line 1046
    :cond_43
    if-eqz p2, :cond_4b

    .line 1047
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 1049
    :cond_4b
    move p2, v2

    .line 1051
    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    goto :goto_25

    .line 1055
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    .line 1056
    return-void
.end method


# virtual methods
.method appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .registers 4

    .line 951
    if-eqz p2, :cond_5

    .line 952
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 954
    :cond_5
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 956
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    goto :goto_2a

    .line 958
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 961
    :goto_2a
    return-void
.end method

.method buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 969
    nop

    .line 970
    nop

    .line 971
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 972
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 973
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    .line 977
    move v0, v4

    goto :goto_2d

    .line 979
    :cond_21
    if-eqz v1, :cond_29

    .line 980
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 982
    :cond_29
    move v1, v4

    .line 984
    :goto_2a
    invoke-static {p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    .line 986
    :goto_2d
    goto :goto_8

    .line 987
    :cond_2e
    if-eqz v0, :cond_37

    .line 989
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 991
    :cond_37
    return v0
.end method

.method public dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mEnabledInputMethodsStrCache="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 1256
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    return v0
.end method

.method getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 905
    nop

    .line 906
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 905
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 911
    nop

    .line 912
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object v0

    .line 913
    if-eqz p3, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 914
    nop

    .line 915
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 914
    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 917
    :cond_16
    const/4 p3, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 921
    nop

    .line 922
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 923
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 924
    if-eqz p1, :cond_6c

    .line 925
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 926
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 927
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 928
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    .line 929
    const/4 v0, 0x0

    :goto_3b
    if-ge v0, p1, :cond_6a

    .line 930
    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 931
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 932
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 933
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_66
    goto :goto_49

    .line 929
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 937
    :cond_6a
    goto :goto_6c

    .line 939
    :cond_6b
    goto :goto_10

    .line 941
    :cond_6c
    :goto_6c
    return-object v1
.end method

.method getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getEnabledInputMethodsStr()Ljava/lang/String;
    .registers 3

    .line 1023
    const-string v0, "enabled_input_methods"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 1028
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 1097
    if-eqz p1, :cond_b

    .line 1098
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1100
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method getSelectedInputMethod()Ljava/lang/String;
    .registers 3

    .line 1231
    const-string v0, "default_input_method"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    return-object v0
.end method

.method getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .registers 3

    .line 1260
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1261
    if-nez p1, :cond_c

    .line 1262
    const/4 p1, -0x1

    return p1

    .line 1264
    :cond_c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result v0

    .line 1265
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p1

    return p1
.end method

.method public isCurrentProfile(I)Z
    .registers 6

    .line 895
    monitor-enter p0

    .line 896
    :try_start_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    monitor-exit p0

    return v1

    .line 897
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 898
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_17

    monitor-exit p0

    return v1

    .line 897
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 900
    :cond_1a
    monitor-exit p0

    return v0

    .line 901
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method isShowImeWithHardKeyboardEnabled()Z
    .registers 3

    .line 1247
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSubtypeSelected()Z
    .registers 3

    .line 1239
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method putEnabledInputMethodsStr(Ljava/lang/String;)V
    .registers 4

    .line 1010
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "enabled_input_methods"

    if-eqz v0, :cond_d

    .line 1013
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1015
    :cond_d
    invoke-direct {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :goto_10
    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const-string p1, ""

    :goto_15
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 1019
    return-void
.end method

.method putSelectedInputMethod(Ljava/lang/String;)V
    .registers 3

    .line 1218
    const-string v0, "default_input_method"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method putSelectedSubtype(I)V
    .registers 3

    .line 1226
    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    .line 1227
    return-void
.end method

.method saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 1270
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->access$300()Ljava/lang/String;

    move-result-object v0

    .line 1271
    if-eqz p2, :cond_e

    .line 1272
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    :cond_e
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1275
    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_17
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .registers 2

    .line 889
    monitor-enter p0

    .line 890
    :try_start_1
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    .line 891
    monitor-exit p0

    .line 892
    return-void

    .line 891
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method setShowImeWithHardKeyboard(Z)V
    .registers 3

    .line 1251
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 1252
    return-void
.end method

.method switchCurrentUser(IZ)V
    .registers 4

    .line 831
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_11

    .line 832
    :cond_8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 833
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 836
    :cond_11
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 837
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    .line 839
    return-void
.end method
